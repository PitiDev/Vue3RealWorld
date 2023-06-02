import ApiService from '../config/api.js'

export default {
  getEvents() {
    return ApiService.get('/events')
  },
  getEvent(id) {
    return ApiService.get('/events/' + id)
  }
}
